{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskellscript";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Sean Parsons";
      maintainer = "github@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "http://github.com/seanparsons/haskellscript/";
      url = "";
      synopsis = "Command line tool for running Haskell scripts with a shebang.";
      description = "Command line tool for running Haskell scripts with a shebang.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskellscript" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.cryptohash)
          ];
        };
      };
    };
  }