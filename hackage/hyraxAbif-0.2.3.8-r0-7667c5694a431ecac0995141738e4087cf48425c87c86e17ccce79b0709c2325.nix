let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hyraxAbif"; version = "0.2.3.8"; };
      license = "BSD-3-Clause";
      copyright = "2018 HyraxBio";
      maintainer = "andre@hyraxbio.co.za, andre@andrevdm.com";
      author = "HyraxBio";
      homepage = "https://github.com/hyraxbio/hyraxAbif/#readme";
      url = "";
      synopsis = "Modules for parsing, generating and manipulating AB1 files.";
      description = "This library provides functionality for parsing, modifying, writing and generating ABIF files\n<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAABuCAMAAAC6LQUkAAAALVBMVEXA5+7/////53c9q1oVFhbCPzifzLVrv4RGguPX39ZFTluGhX6Ks/DSg1zdvnNa6pLqAAADlklEQVRo3u3XjZKjIAwAYD3+BIH3f9wjBCSJtnUd2725qeO6rtWvMSToTn9uXKYvdhXLSmXxSTLG8GPlQD2e8NN+eNVah0QwpZT7I68044LOb6SpJIShcUkMU+zCDGGltD+WTdu2qIuz5hz0iMwp5/h9JhFVizbVu0/j44wx0ZwplTMPDQJIeYcZAHG7JUwMQIXULrTtChpuX9vJATDI29oxB9nfDcF+ODOElVpwNDKKqbbsc5T3Q4xp61jLWdiwrFQdAXqfuVyUd1iqSqYJCFUbmMMbZPeZDuoMGQxw+5ZeZx1rIfHxTPv8b7XK62bt1ncKuoI9WuYLyxf7Yl/si/0+Bk9NiS1lkafDefIYPE/+ScwD5s9gInUenv1eYoFjFt4OLMemJR5g7ggLZ7B4BrO3Y/YCZu/FbFn5sVWvZX2BRcDiBczBSe6t2DS9FcPz+LGgrb2IeX+IhU9iy2nMe4ZBl4tOL1gpteU1pk9is8Rg/pFzUMX0bRj+/D+YP8A8Yn7D7AE2ITaJ6ayOqJhoa3kQzNVa41ipsfhhzCJmfxeziFkxA8HmORYPMds2O2zdMPcYixcw28J7GwbvEBxz92K+DSmbG9uQfgpbFnhSn8F8a4OGYVsKLAAWlquYEti6ao6pA0wjpi9gY0uns779GAbPw5swfOq8wnzHfMNaUfDm7NgkZiAxB7VxDE8xqFn4wleY7Zj9Tay1OOv01uL4a5vO9lidjmk/ncQsCbBhAbFwE1bnKYq5jjkxafTUPcKWQ8yTcXgL5ke50dKnLbD0SW8Rk4bAdMf0M6xPLYvsJt5P7f3nVmx+heE5HDPGmFswyFXDvJg0Wu7oKJIWwAaoLTARzJuUjHcUC2RUH2HhEMsml5VgdmD2GdbaJEzkHaiEVYIj70E/xSJpTcRIc/b/53CHGqQF4mgTipXsz8b8GBuVzbA0z+kK1oc8jtbMiOXRT/1ffUzeA2w5xIozz0V8gqlDbBulhWLQYhzzpOBY4Y+9cIApBfmHERj9pAemn2BbYgPB0h6je+cxr1bEklmVF62JMbJMbUMRaWKnjtX8Y9KsaAAcClb3rruR5iL2/BuDtWeMsqLMcJdhW5ALDX8ZGO4VzInKwCD5LNb3j7CeMkyazH/d58+kVnIx0PAxaR6rrCfNi5TVKDnWbjlqPZFvjNiZZmAtaSRl9Q/+htHkQGaxudWvM/0u4T6NEynDcTfnF70tD074C7p1S5o4ju7XAAAAAElFTkSuQmCC>>\n\nAny AB1 file conforming to the standard at <http://www6.appliedbiosystems.com/support/software_community/ABIF_File_Format.pdf> should be supported.\n\nThis library also support generating a minimal ABIF file from a FASTA input sequence.\n\nA basic terminal application that can dump and generate AB1s is included. See <https://github.com/hyraxbio/hyraxAbif/blob/master/app/Main.hs>\n\nSee\n\n* \"Hyrax.Abif.Generate\" for generate ABIF files from FASTA inputs\n* \"Hyrax.Abif.Read\" for parsing ABIF files\n* \"Hyrax.Abif.Write\" for creating/updating ABIF files\n* \"Hyrax.Abif\" for the core types\n* \"Examples\" for examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      exes = {
        "hyraxAbif-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hyraxAbif" or (buildDepError "hyraxAbif"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            ];
          };
        };
      tests = {
        "hyraxAbif-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hyraxAbif" or (buildDepError "hyraxAbif"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            ];
          };
        };
      };
    }