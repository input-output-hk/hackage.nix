{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "uhexdump"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<E.Y.Kow@brighton.ac.uk>";
      author = "Eric Kow";
      homepage = "";
      url = "";
      synopsis = "hex dumper for UTF-8 text";
      description = "hex dumper for UTF-8 text";
      buildType = "Simple";
      };
    components = {
      exes = {
        "uhexdump" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }