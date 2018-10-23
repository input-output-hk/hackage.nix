{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hulk";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010-2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "IRC server written in Haskell.";
      description = "An IRC server with (mandatory) server authentication, log recall, bumping.\nIntended for private business use or hobby work.";
      buildType = "Simple";
    };
    components = {
      "hulk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.ConfigFile)
          (hsPkgs.fastirc)
          (hsPkgs.network)
          (hsPkgs.ghc-prim)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
          (hsPkgs.Crypto)
          (hsPkgs.cmdargs)
          (hsPkgs.strict)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.unix)
          (hsPkgs.case-insensitive)
          (hsPkgs.monad-extras)
        ];
      };
      exes = {
        "hulk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.ConfigFile)
            (hsPkgs.fastirc)
            (hsPkgs.network)
            (hsPkgs.ghc-prim)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.mtl)
            (hsPkgs.utf8-string)
            (hsPkgs.Crypto)
            (hsPkgs.cmdargs)
            (hsPkgs.strict)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.split)
            (hsPkgs.unix)
            (hsPkgs.case-insensitive)
            (hsPkgs.monad-extras)
          ];
        };
        "hulk-generate-pass" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }