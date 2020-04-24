{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "rpmbuild-order"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010-2018  Henning Thielemann,\n2018 Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://github.com/juhp/rpmbuild-order";
      url = "";
      synopsis = "Order RPM packages by dependencies";
      description = "The rpmbuild-order tool orders RPM packages by dependencies, so that they can\nbe built in the correct order. It does this by reading RPM package spec files\nand then topologically sorts them according to their dependencies.\nThe code originates from cabal-sort by Henning Thielemann.\nIt can also output the ordered dependencies or reverse depends\nfor one or more packages, provided all the packages are checked out\nin neighbouring directories. This is also useful to see what packages\nare affected when a low-level package changes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rpmbuild-order" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }