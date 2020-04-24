{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "mathblog"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
      author = "Jonathan Daugherty <drcygnus@gmail.com>";
      homepage = "http://repos.codevine.org/mathblog/";
      url = "";
      synopsis = "A program for creating and managing a\nstatic, mathematically-inclined weblog";
      description = "This package provides a program for creating and\nmanaging a statically-generated, VCS-friendly,\nmathematically-inclined weblog.  If you're\ninterested in managing a blog with few moving\nparts and support for embedded LaTeX math and the\nUNIX editor of your choice, then this is the\nblogging platform for you!  For detailed\ninformation and a full feature list, please see\nthe README.\nTo see a live example of this software, you might\nconsider taking a look at my math-oriented blog\nat <http://dw.codevine.org/>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mb" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HStringTemplate" or ((hsPkgs.pkgs-errors).buildDepError "HStringTemplate"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            ];
          buildable = true;
          };
        };
      };
    }