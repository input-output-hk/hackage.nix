{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "splot"; version = "0.1.17"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, 2010";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/Splot";
      url = "";
      synopsis = "A tool for visualizing the lifecycle of many concurrent multi-staged processes.";
      description = "A tool for visualizing the lifecycle of many concurrent multi-staged processes.\nEach process has a name, it starts at a point in time, ends at a point in time, and at some\npoints in time it changes colour. See presentation <http://www.slideshare.net/jkff/two-visualization-tools>\nor download <http://jkff.info/presentations/two-visualization-tools.pdf>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "splot" = {
          depends = [
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
            (hsPkgs."strptime" or ((hsPkgs.pkgs-errors).buildDepError "strptime"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }