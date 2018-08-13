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
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hsqml";
        version = "0.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2014 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "Haskell binding for Qt Quick";
      description = "A Haskell binding for Qt Quick.\nGeneral documentation is present in the 'Graphics.QML' module.";
      buildType = "Custom";
    };
    components = {
      "hsqml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
        ];
        libs = if system.isWindows && !_flags.usepkgconfig
          then [
            (pkgs."QtCore4")
            (pkgs."QtGui4")
            (pkgs."QtScript4")
            (pkgs."QtDeclarative4")
            (pkgs."stdc++")
          ]
          else [ (pkgs."stdc++") ];
        frameworks = pkgs.lib.optionals (!(system.isWindows && !_flags.usepkgconfig)) (pkgs.lib.optionals (system.isOsx && !_flags.usepkgconfig) [
          (pkgs."QtCore")
          (pkgs."QtGui")
          (pkgs."QtScript")
          (pkgs."QtDeclarative")
        ]);
        pkgconfig = pkgs.lib.optionals (!(system.isWindows && !_flags.usepkgconfig)) (pkgs.lib.optionals (!(system.isOsx && !_flags.usepkgconfig)) [
          (pkgconfPkgs.QtScript)
          (pkgconfPkgs.QtDeclarative)
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
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.tagged)
            (hsPkgs.QuickCheck)
            (hsPkgs.hsqml)
          ];
        };
      };
    };
  }