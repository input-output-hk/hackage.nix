{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "dependent-sum"; version = "0.6.2.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Obsidian Systems, LLC <maintainer@obsidian.systems>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/obsidiansystems/dependent-sum";
      url = "";
      synopsis = "Dependent sum type";
      description = "A dependent sum is a generalization of a\nparticular way of thinking about the @Either@\ntype.  @Either a b@ can be thought of as a\n2-tuple @(tag, value)@, where the value of the\ntag determines the type of the value.  In\nparticular, either @tag = Left@ and @value :: a@\nor @tag = Right@ and @value :: b@.\n\nThis package allows you to define your own\ndependent sum types by using your own \\\"tag\\\"\ntypes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints-extras" or ((hsPkgs.pkgs-errors).buildDepError "constraints-extras"))
          (hsPkgs."some" or ((hsPkgs.pkgs-errors).buildDepError "some"))
          ];
        buildable = true;
        };
      };
    }