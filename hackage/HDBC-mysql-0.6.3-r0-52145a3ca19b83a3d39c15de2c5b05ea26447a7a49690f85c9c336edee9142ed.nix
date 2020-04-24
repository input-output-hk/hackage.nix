{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HDBC-mysql"; version = "0.6.3"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009-2010 Chris Waterson";
      maintainer = "Chris Waterson <waterson@maubi.net>";
      author = "Chris Waterson";
      homepage = "http://www.maubi.net/~waterson/hacks/hdbc-mysql.html";
      url = "";
      synopsis = "MySQL driver for HDBC";
      description = "This package provides a MySQL driver for HDBC.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          ];
        buildable = true;
        };
      };
    }