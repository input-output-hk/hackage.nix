{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stackage-cli"; version = "0.0.0.4"; };
      license = "MIT";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton@fpcomplete.com";
      author = "Dan Burton";
      homepage = "https://www.stackage.org/package/stackage-cli";
      url = "";
      synopsis = "A CLI library for stackage commands";
      description = "A CLI library for stackage commands";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.exceptions)
          (hsPkgs.optparse-simple)
          (hsPkgs.either)
          ];
        };
      exes = {
        "stackage" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.stackage-cli) ];
          };
        "stk" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.stackage-cli) ];
          };
        "stackage-init" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.system-fileio)
            (hsPkgs.optparse-applicative)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            ];
          };
        "stackage-purge" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.system-fileio)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.exceptions)
            ];
          };
        "stackage-upgrade" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.system-fileio)
            (hsPkgs.optparse-applicative)
            ];
          };
        "stackage-sandbox" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }