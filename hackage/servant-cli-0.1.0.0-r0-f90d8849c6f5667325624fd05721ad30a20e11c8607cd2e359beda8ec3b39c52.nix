{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "servant-cli"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2019";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/servant-cli#readme";
      url = "";
      synopsis = "Command line interface for Servant API clients";
      description = "Parse command line arguments into a servant client, from a servant API,\nusing /optparse-applicative/ for parsing, displaying help, and\nauto-completion.\n\nHooks into the annotation system used by /servant-docs/ to provide descriptions\nfor parameters and captures.\n\nSee @example/greet.hs@ for an example usage, and the\n<https://hackage.haskell.org/package/servant-cli README> for a tutorial.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.http-types)
          (hsPkgs.kan-extensions)
          (hsPkgs.optparse-applicative)
          (hsPkgs.profunctors)
          (hsPkgs.recursion-schemes)
          (hsPkgs.servant)
          (hsPkgs.servant-client-core)
          (hsPkgs.servant-docs)
          (hsPkgs.text)
          (hsPkgs.vinyl)
          ];
        };
      exes = {
        "greet-cli" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.http-client)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.servant)
            (hsPkgs.servant-cli)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }