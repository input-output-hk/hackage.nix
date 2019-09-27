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
      specVersion = "1.8";
      identifier = { name = "erd"; version = "0.1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jamslam@gmail.com";
      author = "Andrew Gallant";
      homepage = "https://github.com/BurntSushi/erd";
      url = "";
      synopsis = "An entity-relationship diagram generator from a plain text description.";
      description = "erd transforms a plain text description of a relational database schema to a\ngraphical representation of that schema. It is intended that the graph make\nuse of common conventions when depicting entity-relationship diagrams,\nincluding modeling the cardinality of relationships between entities.\n\nA quick example that transforms an `er` file to a PDF:\n\n> \$ curl 'https://raw.github.com/BurntSushi/erd/master/examples/simple.er' > simple.er\n> \$ cat simple.er\n> # Entities are declared in '[' ... ']'. All attributes after the entity header\n> # up until the end of the file (or the next entity declaration) correspond\n> # to this entity.\n> [Person]\n> *name\n> height\n> weight\n> +birth_location_id\n>\n> [Location]\n> *id\n> city\n> state\n> country\n>\n> # Each relationship must be between exactly two entities, which need not\n> # be distinct. Each entity in the relationship has exactly one of four\n> # possible cardinalities:\n> #\n> # Cardinality    Syntax\n> # 0 or 1         0\n> # exactly 1      1\n> # 0 or more      *\n> # 1 or more      +\n> Person *--1 Location\n> \$ erd -i simple.er -o simple.pdf\n\nThe PDF should now contain a graph that looks like this:\n\n<<http://burntsushi.net/stuff/erd-example-simple.png>>\n\nSee the <https://github.com/BurntSushi/erd#readme README.md> file for more\nexamples and instructions on how to write ER files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "erd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }