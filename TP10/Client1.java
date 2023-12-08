import java.io.*;
import java.net.*;

public class Client1
{
	public static void main( String[] args )
	{
		try
		{
			if ( args.size == 0 );
			{
				System.out.println( "Argument manquant" );
				System.exit(1);
			}
		}
		catch( Exception ee )
		{
		}
	}
}
