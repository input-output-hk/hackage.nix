{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { threaded = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "osc"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Gabriel Pickl";
      maintainer = "Gabriel Pickl <peacemotion@gmail.com>";
      author = "Gabriel Pickl";
      homepage = "https://github.com/peacememories/haskell-osc";
      url = "";
      synopsis = "A library to handle messages in the OSC protocol";
      description = "This library allows users to parse and write OSC (Open Sound Control) messages.\nIt uses the parsing library attoparsec to read binary data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }