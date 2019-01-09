{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "string-conv"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, 2012-2015";
      maintainer = "ozgun.ataman@soostone.com";
      author = "Ozgun Ataman";
      homepage = "https://github.com/Soostone/string-conv";
      url = "";
      synopsis = "Standardized conversion between string types";
      description = "Avoids the need to remember many different functions\nfor converting string types.  Just use one universal\nfunction toS for all monomorphic string conversions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text) ];
        };
      };
    }