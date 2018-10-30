{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "mmark-cli";
        version = "0.0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mmark-md/mmark-cli";
      url = "";
      synopsis = "Command line interface to the MMark markdown processor";
      description = "Command line interface to the MMark markdown processor.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mmark" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.gitrev)
            (hsPkgs.lucid)
            (hsPkgs.megaparsec)
            (hsPkgs.mmark)
            (hsPkgs.mmark-ext)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stache)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }