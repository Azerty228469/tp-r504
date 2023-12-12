import java.io.*;
import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;
import javax.json.*;
import java.util.Scanner;

public class Client3
{
	public static void main( String[] args )
	{
		try
		{
			while( true )
			{
				CloseableHttpClient client = HttpClients.createDefault();
				Scanner scan = new Scanner(System.in);
				System.out.println("Veuillez saisir un titre de film :");
				String titre = scan.nextLine();
				String url = "http://omdbapi.com/?apikey=751ea6aa&t=" + titre;
				HttpGet request = new HttpGet(url);

				System.out.println( "Executing request " + request.getRequestLine() );
				CloseableHttpResponse resp = client.execute(request);

				System.out.println( "Response Line: " + resp.getStatusLine() );
				System.out.println( "Response Code: " + resp.getStatusLine().getStatusCode() );

				InputStreamReader isr = new InputStreamReader( resp.getEntity().getContent() );
				JsonReader reader = Json.createReader(isr);
				JsonObject obj = reader.readObject();
				reader.close();
				isr.close();
				System.out.println( "Sortie : " + obj.getString("Released") );
				System.out.println( "Acteurs principaux : " + obj.getString("Actors") );
				JsonArray tab = obj.getJsonArray("Ratings");
				for( int i=0; i<tab.size(); i++ )
				{
					JsonObject js = tab.getJsonObject(i);
					if ( js.getString("Source").equals("Rotten Tomatoes") )
					{
						System.out.println( "Note : " + js.getString("Value") );
					}
				}
			}
		}
		catch( Exception ee )
		{
		}
	}
}
