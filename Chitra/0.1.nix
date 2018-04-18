{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Chitra";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ckkashyap@gmail.com";
        author = "C K Kashyap";
        homepage = "http://github.com/ckkashyap/Chitra";
        url = "";
        synopsis = "Simple, VNC based graphics rendering system";
        description = "Chitra in most Indian languages means \"Image\". This aim of this project is to build an VNC library that can be used to develop interactive graphical application. What I think will be the strength of Chitra would be its \"platform independence\". So, the idea is, the library would have a \"putpixel\" function which when called would render a pixel on an image buffer that would be rendered via the vnc server. For viewing and interactive with the aplication, one would use a standard VNC client. Eventually, I might chose to do this using the RDP protocol that even has support for sound.\nTo try out -\nJust do a make and you should have the executable *Main* created.\nRun ./Main <width> <height> <port>\nNow try connecting a vnc client to localhost:5900";
        buildType = "Simple";
      };
      components = {
        Chitra = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.mtl
          ];
        };
        exes = {
          Chitra = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }