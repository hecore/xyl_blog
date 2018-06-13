
package com.fly.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;

public class GZIPServletOutputStream extends ServletOutputStream
{
    private GZIPOutputStream gzip;

    public GZIPServletOutputStream(ByteArrayOutputStream buffer)
            throws IOException
    {
        this.gzip = new GZIPOutputStream(buffer);
    }

    public void write(int b) throws IOException
    {
        this.gzip.write(b);
    }

    public void close() throws IOException
    {
        this.gzip.finish();
        this.gzip.close();
    }

	@Override
	public boolean isReady() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setWriteListener(WriteListener arg0) {
		// TODO Auto-generated method stub
		
	}
}
