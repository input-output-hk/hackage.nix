{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "libhbb"; version = "0.1.1.1"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "contact@wolf-kissendorf.de";
      author = "Christian Wolf";
      homepage = "https://bitbucket.org/bhris/libhbb";
      url = "";
      synopsis = "Backend for text editors to provide better Haskell editing support.";
      description = "This project contains a library that utilizes the GHC API\nto provide some special features for Haskell text editors.\nLibhbb has been designed to extend ghc-mod (which does\nsimilar tasks) with certain features. However libhbb is\ncompletely independent of ghc-mod. The connection to\nghc-mod is established in a package called hbb. The\nfeatures of libhbb can be used standalone by the means of\nthe executable hbb-simple-cli which is sipped as well.\nThe big outstanding feature that libhbb provides is the\nability to inline functions (their body is converted to a\nlambda function and written in place of the according\nname).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.syb)
          (hsPkgs.ghc-paths)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          ];
        };
      exes = {
        "hbb-simple-cli" = {
          depends = [ (hsPkgs.base) (hsPkgs.libhbb) (hsPkgs.bytestring) ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.hspec)
            (hsPkgs.syb)
            (hsPkgs.libhbb)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-paths)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }