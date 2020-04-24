{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pipes-zlib"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "p.capriotti@gmail.com";
      author = "Paolo Capriotti";
      homepage = "https://github.com/pcapriotti/pipes-extra";
      url = "";
      synopsis = "Pipes to deal with zipped data.";
      description = "Pipes to deal with zipped data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pipes-core" or ((hsPkgs.pkgs-errors).buildDepError "pipes-core"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."zlib-bindings" or ((hsPkgs.pkgs-errors).buildDepError "zlib-bindings"))
          ];
        buildable = true;
        };
      };
    }