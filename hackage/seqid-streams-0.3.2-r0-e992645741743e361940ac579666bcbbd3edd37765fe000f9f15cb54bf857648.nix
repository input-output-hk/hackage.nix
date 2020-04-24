{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "seqid-streams"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "";
      url = "";
      synopsis = "Sequence ID IO-Streams";
      description = "Uniquely identify elements in a sequenced stream";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."seqid" or ((hsPkgs.pkgs-errors).buildDepError "seqid"))
          ];
        buildable = true;
        };
      };
    }