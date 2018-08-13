{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      usepkgconfig = false;
      threadedtestsuite = true;
      forceghcilib = true;
      useexithook = true;
      enableqmldebugging = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hsqml";
        version = "0.3.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2016 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "Haskell binding for Qt Quick";
      description = "A Haskell binding for Qt Quick, a cross-platform framework for creating\ngraphical user interfaces. For further information on installing and using\nthis library, please see the project's web site.";
      buildType = "Custom";
    };
    components = {
      "hsqml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
        ];
        libs = if system.isWindows && !_flags.usepkgconfig
          then [
            (pkgs.Qt5Core)
            (pkgs.Qt5Gui)
            (pkgs.Qt5Widgets)
            (pkgs.Qt5Qml)
            (pkgs.Qt5Quick)
            (pkgs.stdc++)
          ]
          else [ (pkgs.stdc++) ];
        frameworks = pkgs.lib.optionals (!(system.isWindows && !_flags.usepkgconfig)) (pkgs.lib.optionals (system.isOsx && !_flags.usepkgconfig) [
          (pkgs.QtCore)
          (pkgs.QtGui)
          (pkgs.QtWidgets)
          (pkgs.QtQml)
          (pkgs.QtQuick)
        ]);
        pkgconfig = pkgs.lib.optionals (!(system.isWindows && !_flags.usepkgconfig)) (pkgs.lib.optionals (!(system.isOsx && !_flags.usepkgconfig)) [
          (pkgconfPkgs.Qt5Core)
          (pkgconfPkgs.Qt5Gui)
          (pkgconfPkgs.Qt5Widgets)
          (pkgconfPkgs.Qt5Qml)
          (pkgconfPkgs.Qt5Quick)
        ]);
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "hsqml-test1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.tagged)
            (hsPkgs.QuickCheck)
            (hsPkgs.hsqml)
          ];
        };
      };
    };
  }