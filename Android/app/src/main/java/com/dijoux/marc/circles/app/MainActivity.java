package com.dijoux.marc.circles.app;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewDebug;
import android.widget.TextView;

public class MainActivity extends Activity implements View.OnClickListener {
    private TextView lineWidthText;
    private TextView circlesNbText;
    private CircleView circleView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        lineWidthText = (TextView)findViewById(R.id.lineWidthText);
        circlesNbText = (TextView)findViewById(R.id.circlesNbText);
        circleView = (CircleView)findViewById(R.id.circleView);

        setCirclesNb(circleView.getCircles_nb());
        setLineWidth(circleView.getLine_width());
    }

    public void setCirclesNb(int nb){
        circlesNbText.setText((new Integer(nb)).toString());
    }

    public int getCirclesNb(){
        return Integer.parseInt(circlesNbText.getText().toString());
    }

    public void setLineWidth(float width){
        lineWidthText.setText((new Float(width)).toString());
    }

    public float getLineWidth(){
        return Float.parseFloat(lineWidthText.getText().toString());
    }

    @Override
    public void onClick(View v){
        switch (v.getId()) {
            case R.id.updateButton:
                circleView.setCircles_nb(getCirclesNb());
                circleView.setLine_width(getLineWidth());
                circleView.invalidate();
                break;
        }
    }
}
