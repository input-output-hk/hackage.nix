{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      havedeepseq = true;
      llvm = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "toolshed";
        version = "0.12.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010 Dr. Alistair Ward";
      maintainer = "toolshed <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Utilities used by other packages.";
      description = "An ill-defined collection of simple unrelated utilities used by other packages from <http://functionalley.eu>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (flags.havedeepseq) (hsPkgs.deepseq);
      };
    };
  }