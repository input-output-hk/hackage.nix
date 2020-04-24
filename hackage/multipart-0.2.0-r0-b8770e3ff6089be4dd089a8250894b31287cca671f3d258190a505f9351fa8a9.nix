{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multipart"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Andy Gill, Anders Kaseorg, Ian Lynagh, Erik Meijer, Sven Panne, Jeremy Shaw";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "http://www.github.com/silkapp/multipart";
      url = "";
      synopsis = "Parsers for the HTTP multipart format";
      description = "Parsers and data types for the HTTP multipart format from RFC2046.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."stringsearch" or ((hsPkgs.pkgs-errors).buildDepError "stringsearch"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"));
        buildable = true;
        };
      };
    }