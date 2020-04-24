{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "hs-bibutils"; version = "6.7.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Václav Haisman <vhaisman@gmail.com>";
      author = "Andrea Rossato";
      homepage = "https://github.com/wilx/hs-bibutils";
      url = "";
      synopsis = "Haskell bindings to bibutils, the bibliography\nconversion utilities.";
      description = "Haskell bindings to Chris Putnam's bibutils, a\nlibrary that interconverts between various\nbibliography formats using a common MODS-format\nXML intermediate.\n\nhs-bibutils is available under the GNU GPL license. See\nthe LICENSE file for details.\n\nFor more details about bibutils, please check:\n<http://sourceforge.net/p/bibutils/home/Bibutils/>.\n\nThe package release number refers to the release number of\nthe included bibutils library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
        buildable = true;
        };
      };
    }