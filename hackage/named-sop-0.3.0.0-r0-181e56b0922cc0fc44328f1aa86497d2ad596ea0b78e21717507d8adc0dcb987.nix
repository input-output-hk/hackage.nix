{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "named-sop"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sam Schweigel <s.schweigel@gmail.com>";
      author = "Sam Schweigel";
      homepage = "https://github.com/sjsch/named-sop";
      url = "";
      synopsis = "Dependently-typed sums and products, tagged by field name";
      description = "Sums and Maps (products) indexed by a typelevel map of their field\n(or constructor) names and types.  They can be combined and split\nagain; their typelevel map is sorted to ensure that the end result\nis independent of the order you combine it in.\n\n\"Data.NamedSOP.Generic\" contains functions for automatically\nconverting between types with a Generic instance and named sums of\nproducts:\n\n> >>> data A = C { a :: Int, b :: Bool }\n> >>>          | D Int Bool deriving (Generic)\n> >>> :t genSum (C 3 True)\n> NSum\n>  '[ \"_C\" ':-> NMap '[ \"a\" ':-> Int, \"b\" ':-> Bool],\n>     \"_D\" ':-> NMap '[ \"_1\" ':-> Int, \"_2\" ':-> Bool]]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "named-sop-spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."named-sop" or ((hsPkgs.pkgs-errors).buildDepError "named-sop"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }