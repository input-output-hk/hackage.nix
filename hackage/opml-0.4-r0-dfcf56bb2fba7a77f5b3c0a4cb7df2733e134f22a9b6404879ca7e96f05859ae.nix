{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "opml"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007, 2008 Galois Inc.";
      maintainer = "Don Stewart";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Representing and handling OPML subscription information.";
      description = "Representing and handling OPML subscription information.  OPML\n(Outline Processor Markup Language) is an XML format for outlines,\nmost commonly used to exchange lists of web feeds between web feed\naggregators. <http://www.opml.org/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }