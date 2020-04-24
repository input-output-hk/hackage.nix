{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "binary-generic"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lars Petersen <info@lars-petersen.net>";
      author = "Lars Petersen <info@lars-petersen.net>";
      homepage = "http://github.com/lpeterse/binary-generic";
      url = "";
      synopsis = "Generic binary serialisation using binary and syb.";
      description = "Instead of manual or semi-automated generation of\ninstances of 'Data.Binary.Binary' you just derive\n'Data.Data.Data' and the library automatically\nfigures out how to (de-)serialize the type.\nYou may also define your own type-specific\nstack of serialisation functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }