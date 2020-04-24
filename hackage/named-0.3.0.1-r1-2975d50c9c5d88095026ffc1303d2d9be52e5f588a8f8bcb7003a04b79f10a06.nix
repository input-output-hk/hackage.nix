{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "named"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Monadfix <hi@monadfix.com>";
      author = "Vladislav Zavialov";
      homepage = "https://github.com/monadfix/named";
      url = "";
      synopsis = "Named parameters (keyword arguments) for Haskell";
      description = "`named` is a lightweight library for named function parameters (keyword\narguments) based on overloaded labels. Keyword arguments have several\nadvantages over positional arguments:\n\n* they can be supplied in arbitrary order\n* their names serve as documentation at call site\n* it is impossible to accidentally mix them up\n\nUnlike @newtype@ wrappers, keyword arguments don't pollute the global\nnamespace, don't require top-level definitions, and don't need to be\nexported.\n\nThis implementation of named parameters is typesafe, provides good type\ninference, descriptive type errors, and has no runtime overhead.\n\nExample usage:\n\n> import Named\n>\n> createSymLink :: \"from\" :! FilePath -> \"to\" :! FilePath -> IO ()\n> createSymLink (Arg from) (Arg to) = ...\n>\n> main = createSymLink ! #from \"/path/to/source\"\n>                      ! #to \"/target/path\"";
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
        "regression" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."named" or ((hsPkgs.pkgs-errors).buildDepError "named"))
            ];
          buildable = true;
          };
        };
      };
    }