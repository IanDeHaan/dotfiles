Section "ServerLayout"
	Identifier     "X.org Configured"
	Screen      0  "Screen0" 0 0
	InputDevice    "Mouse0" "CorePointer"
	InputDevice    "Keyboard0" "CoreKeyboard"
EndSection

Section "Files"
	ModulePath   "/usr/lib/xorg/modules"
	FontPath     "/usr/share/fonts/misc"
	FontPath     "/usr/share/fonts/TTF"
	FontPath     "/usr/share/fonts/OTF"
	FontPath     "/usr/share/fonts/Type1"
	FontPath     "/usr/share/fonts/100dpi"
	FontPath     "/usr/share/fonts/75dpi"
EndSection

Section "Module"
	Load  "glx"
EndSection

Section "InputDevice"
	Identifier  "Keyboard0"
	Driver      "kbd"
EndSection

Section "InputDevice"
	Identifier  "Mouse0"
	Driver      "mouse"
	Option	    "Protocol" "auto"
	Option	    "Device" "/dev/input/mice"
	Option	    "ZAxisMapping" "4 5 6 7"
EndSection

Section "Monitor"
	Identifier   "Monitor0"
	VendorName   "Monitor Vendor"
	ModelName    "Monitor Model"
EndSection

Section "Device"
        ### Available Driver options are:-
        ### Values: <i>: integer, <f>: float, <bool>: "True"/"False",
        ### <string>: "String", <freq>: "<f> Hz/kHz/MHz",
        ### <percent>: "<f>%"
        ### [arg]: arg optional
        #Option     "SWcursor"           	# [<bool>]
        #Option     "kmsdev"             	# <str>
        #Option     "ShadowFB"           	# [<bool>]
        #Option     "AccelMethod"        	# <str>
        #Option     "PageFlip"           	# [<bool>]
        #Option     "ZaphodHeads"        	# <str>
        #Option     "DoubleShadow"       	# [<bool>]
	Identifier  "Card0"
	Driver      "intel"
	BusID       "PCI:0:2:0"
	Option	    "Backlight" "intel_backlight"
EndSection



Section "Screen"
	Identifier "Screen0"
	Device     "Card0"
	Monitor    "Monitor0"
	SubSection "Display"
		Viewport   0 0
		Depth     1
	EndSubSection
	SubSection "Display"
		Viewport   0 0
		Depth     4
	EndSubSection
	SubSection "Display"
		Viewport   0 0
		Depth     8
	EndSubSection
	SubSection "Display"
		Viewport   0 0
		Depth     15
	EndSubSection
	SubSection "Display"
		Viewport   0 0
		Depth     16
	EndSubSection
	SubSection "Display"
		Viewport   0 0
		Depth     24
	EndSubSection
EndSection

Section "InputClass"
	Identifier "touchpad catchall"
	Driver "synaptics"
	MatchIsTouchpad "on"
	MatchDevicePath "/dev/input/event*"
EndSection

Section "InputClass"
	Identifier "touchpad ignore duplicates"
	MatchIsTouchpad "on"
	MatchOS "Linux"
	MatchDevicePath "/dev/input/mouse*"
	Option "Ignore" "on"
EndSection

Section "InputClass"
	Identifier "Default clickpad buttons"
	MatchDriver "synaptics"
	Option "SoftButtonAreas" "50% 0 82% 0 0 0 0 0"
	Option "SecondarySoftButtonAreas" "58% 0 0 15% 42% 58% 0 15%"
EndSection

Section "InputClass"
	Identifier "Disable clickpad buttons on Apple touchpads"
	MatchProduct "Apple|bcm5974"
	MatchDriver "synaptics"
	Option "SoftButtonAreas" "0 0 0 0 0 0 0 0"
EndSection

Section "InputClass"
	MatchIsTouchpad "on"
	Identifier "Touchpads"
	Driver "mtrack"
	Option "Sensitivity" "0.55"
	Option "FingerHigh" "5"
	Option "FingerLow" "1"
	Option "IgnoreThumb" "true"
	Option "IgnorePalm" "true"
	Option "TapButton1" "1"
	Option "TapButton2" "3"
	Option "TapButton3" "2"
	Option "TapButton4" "0"
	Option "ClickFinger1" "1"
	Option "ClickFinger2" "3"
	Option "ClickFinger3" "2"
	Option "ButtonMoveEmulate" "false"
	Option "ButtonIntegrated" "true"
	Option "ClickTime" "25"
	Option "MaxTapTime" "120"
	Option "BottomEdge" "25"
	Option "SwipeLeftButton" "8"
	Option "SwipeRightButton" "9"
	Option "SwipeUpButton" "0"
	Option "SwipeDownButton" "0"
	Option "ScrollDistance" "75"
	Option "ScrollUpButton" "5"
	Option "ScrollDownButton" "4"
EndSection






