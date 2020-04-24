{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "membrain"; version = "0.0.0.1"; };
      license = "MPL-2.0";
      copyright = "2018-2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/membrain";
      url = "";
      synopsis = "Type-safe memory units";
      description = "@membrain@ provides @newtype@ wrapper for type-safe work with memory units\n\n@\n__newtype__ Memory (mem :: Nat) = Memory\n\\    { unMemory :: Natural\n\\    }\n@\n\nThis data type stores memory unit value phantom type parameter which is\nrepresented as type-level natural number.\nThe ideas behind this package are described in the following blog post:\n\n* [Insane in the Membrain](https://kowainik.github.io/posts/membrain)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "membrain-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."membrain" or ((hsPkgs.pkgs-errors).buildDepError "membrain"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."type-spec" or ((hsPkgs.pkgs-errors).buildDepError "type-spec"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }