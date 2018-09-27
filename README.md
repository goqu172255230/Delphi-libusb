![](media/c073bd0e0ba1bc6330590f0f04173b5f.png)

**The Delphi Development**

Libusb 1.0 is open source C library that provides generic communication to USB
devices and is widely used on Windows, OSX and Linux Platforms’. Libusb 1.0
supports USB 3.1 and is backwards compatible with USB 2.0 and USB 1.0 and it
currently supports a Windows only Platform.

It features the following:-

-   Supports all transfer types such as (control / bulk / interrupt /
    isochronous),

-   Supports two transfer interfaces.

    -   Synchronous(simple).

    -   Asynchronous(more complicated but more powerful).

-   Thread safe.

-   Lightweight with a lean API.

-   Supports hotplug capability.

Please note that the Hotplug capability is not available for Windows. The C++ Libusb creators are planning 
to include this feature on the next update.

This is a Full Delphi header translation of the Libusb.h file available for both
VCL and FMX Windows 32bit and 64bit only.

This supports the DLL Version 1.0.17 and up.

![](media/5e7e326f1cac06cde584741d41543d22.gif)

**Documentation - Wiki**

A **comprehensive Wiki** has been set up to cover all aspects of the Delphi
Libusb library. Feel free to visit the library for further information.

Checkout the Wiki <https://github.com/Greg-Bayes/Delphi-libusb/wiki>

**Testing on your IDE**

Examples are created in both FMX and VCL for your usage ( created on Tokyo
10.2.3) and should be backwards compatible to Unicode versions in VCL and early
FMX versions.

Current Examples :-

-   DLL Version

![](media/c3c7bec784993da828c9302fc8b567f3.gif)

-   Test LibUSB

![](media/3316d2a33f3684da8b72c9b55c16419b.gif)

-   ListDevs

![](media/de3d28c2bba393cb3b591ed27c01b0d5.gif)

-   Bulk Transfer

-   FXLoad

The following examples are in development and will be added one by one after
testing

-   Asynchronous Transfer

-   Hotplug Test on hold

-   xUSB

-   Bulk Transfer Arduino

As this is an Open Source project, I would be happy to share any example
contributions.

**What is in the Source Pack?**

**Src**

-   libusb1.pas

-   libusb1helper.pas

**Windows DLL binaries**

-   32bit

-   64bit

**Examples**

-   FMX

-   VCL

**Using LibUSB in your Application**

Open a new application in your IDE. Add the libusb1 to the project and add the
libusb1 library to the users list. Add the correct DLL to the application EXE
folder. Normally in the folder structure Win32/Debug/libusb/libusb-1.0.dll or
Win64/Debug/libusb/libusb-1.0.dll. Place the correct DLL in the correct folder
as they are not interchangeable. The 32bit DLL shares the same name as the 64bit
DLL.

Refer to the Wiki

-   [Delphi libusb Integration with
    Applications](https://github.com/Greg-Bayes/Delphi-libusb/wiki/3-Delphi-libusb-Integration-with-Applications)

-   [Examples](https://github.com/Greg-Bayes/Delphi-libusb/wiki/8-Examples)

**Updated Changes**

-  Change Date 27/09/2018
    -       Added FXload example for loading EEPROM to EZUSB

-   Change Date 24/08/2018

    -   Libusb Hotplug function and procedure error fixes

        -   type libusb_pollfd_added_cb = procedure(fd:integer;events: Smallint
            ; user_data:pointer);

        -   type libusb_pollfd_removed_cb = procedure(fd:integer;
            user_data:pointer);

        -   type libusb_get_pollfds = function(ctx:plibusb_context)
            :pplibusb_pollfd;

        -   type libusb_set_pollfd_notifiers = procedure(ctx:

        -   plibusb_context; added_cb:libusb_pollfd_added_cb; removed_cb:
            libusb_pollfd_removed_cb; user_data:pointer);

        -   type libusb_hotplug_callback_fn = function (ctx: libusb_context;
            device:plibusb_device;event: libusb_hotplug_event :user_data :
            pointer ) :integer;

-   Change Date 21/08/2018

    -   libusb_hotplug_callback_fn1 to libusb_hotplug_callback_fn now correctly
        refers to an integer

-   Change Date 04/08/2108

    -   libusb_set_option added.

    -   changed type usb_option to libusb_option .

    -   added the TYPE Libusb_log_level.

-   Change Date 06/05/2018

-   Changed example Bulk Transfer various errors

-   Changed example Arduino Transfer various errors

-   Changed Libusb1 library various

    -   libusb_interface

        -   altsetting: array of plibusb_interface_descriptor;

-   Change Date 21/02/2018

    -   libusb_interface_descriptor

        -   endpoint: array of plibusb_endpoint_descriptor

        -   &interface: array of plibusb_interface;

    -   Completed and tested the TestLibusb.
