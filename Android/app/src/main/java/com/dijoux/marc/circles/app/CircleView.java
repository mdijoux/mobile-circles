package com.dijoux.marc.circles.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

import java.util.jar.Attributes;

/**
 * Created by Cram on 21/05/2014.
 */
public class CircleView extends View {

    private int circles_nb = 20;
    private float line_width = 5.0f;

    public  CircleView(Context context){
        super(context);
    }

    public CircleView(Context context, AttributeSet attrs){
        super(context, attrs);
    }

    public CircleView(Context context, AttributeSet attrs, int defStyleAttr){
        super(context, attrs, defStyleAttr);
    }

    protected int random(int min, int max){
        return (int)(Math.random()*(max-min))+min;
    }

    public int getCircles_nb(){
        return this.circles_nb;
    }

    public void setCircles_nb(int circles_nb){
        this.circles_nb = circles_nb;
    }

    public float getLine_width(){
        return this.line_width;
    }

    public void setLine_width(float line_width){
        this.line_width = line_width;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int w = getWidth();
        int h = getHeight();
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(line_width);
        paint.setColor(Color.DKGRAY);

        for(int i = 1; i<=circles_nb; i++){
            int cx = random(0, w);
            int cy = random(0, h);
            float radius = i*15;
            canvas.drawCircle(cx, cy, radius, paint);
        }
        super.onDraw(canvas);
    }
}
