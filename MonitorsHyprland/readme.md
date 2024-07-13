In this project, we will be working on a script that dinamically changes the screen modes, when connecting a new monitor into Hyprland: 

Detect Changes in Monitor Setup:
Use hyprctl monitors to list all monitors and detect when a new monitor is connected or an existing one is disconnected.

Configuration Based on Monitor Status:
Dynamically adjust the configuration based on the monitor's properties (like name, resolution, refresh rate, and position). You can leverage the information from hyprctl monitors to apply settings using your Hyprland configuration file.

Monitor Configuration Commands:
Create a series of monitor= commands in your Hyprland configuration that handle various scenarios (e.g., different positions or additional settings when an external monitor is connected).

Script Automation:
Write a shell script or a small daemon that watches for changes in the monitor setup (by periodically running hyprctl monitors) and applies the appropriate configuration dynamically.

Integrate with Hyprland:
Ensure that changes are recognized by Hyprland by reloading the configuration or using hyprctl reload when changes are applied.
