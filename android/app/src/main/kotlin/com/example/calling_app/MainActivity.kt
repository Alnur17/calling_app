package com.example.calling_app

import android.content.Intent
import android.provider.Settings
import android.os.Build
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {

    override fun onUserLeaveHint() {
        super.onUserLeaveHint()

        // Your logic for handling user leave hint goes here
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !Settings.canDrawOverlays(this)) {
            // Prompt the user to allow drawing over other apps
            Toast.makeText(this, "Please enable drawing over other apps", Toast.LENGTH_LONG).show()
            val intent = Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION)
            startActivity(intent)
        }
    }
}

