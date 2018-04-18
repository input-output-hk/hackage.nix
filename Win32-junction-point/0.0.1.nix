{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Win32-junction-point";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011, Michael Steele. Copyright (c) 2000, Mikael Nordell";
        maintainer = "mikesteele81@gmail.com";
        author = "Michael Steele";
        homepage = "http://github.com/mikesteele81/Win32-junction-point";
        url = "";
        synopsis = "Support for manipulating NTFS junction points.";
        description = "This package provides the ability to manipulate NTFS junction points as\nsupported by Windows 2000 and above. Junction points, along with NTFS hard\nlinks and NTFS symbolic links, are a type of symbolic link that can be made\nbetween folders existing on the same filesystem. Please read Microsoft\nKB205524 [1] for more information on junction points.\n\nJunction points have always been left undocumented in the Win32 SDK. The\nWindows 2000 Resource Kit came with a command-line utility named linkd.exe\nto work with them. Later, Mark Russinovich of SysInternals distributed a\nreplacement utility named Junction [2] which accomplished the same thing.\n\nThis source code is based on an article [3] and C++ library [4] written by\nMike Nordell at codeproject.com.\n\nIt is against Microsoft's recommendation to make use of undocumented API\nfeatures. Use this library at your own risk.\n\n(1) <http://support.microsoft.com/?kbid=205524>\n\n(2) <http://technet.microsoft.com/en-us/sysinternals/bb896768>\n\n(3) <http://www.codeproject.com/script/Articles/ViewDownloads.aspx?aid=194>\n\n(4) <http://www.codeproject.com/KB/winsdk/junctionpoints.aspx>";
        buildType = "Simple";
      };
      components = {
        Win32-junction-point = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.Win32
          ];
        };
      };
    }