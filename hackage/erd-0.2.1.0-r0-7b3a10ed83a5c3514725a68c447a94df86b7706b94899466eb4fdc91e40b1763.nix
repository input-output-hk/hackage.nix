{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "erd"; version = "0.2.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jamslam@gmail.com";
      author = "Andrew Gallant";
      homepage = "https://github.com/BurntSushi/erd";
      url = "";
      synopsis = "An entity-relationship diagram generator from a plain text description.";
      description = "erd transforms a plain text description of a relational database schema to a\ngraphical representation of that schema. It is intended that the graph make\nuse of common conventions when depicting entity-relationship diagrams,\nincluding modeling the cardinality of relationships between entities.\n\nA quick example that transforms an `er` file to a PDF is just below. The\noriginal source file can be found amongst the examples in the repository.\n\n> \$ cat simple.er\n> # Entities are declared in '[' ... ']'. All attributes after the\n> # entity header up until the end of the file (or the next entity\n> # declaration) correspond to this entity.\n> #\n> [Person]\n> *name\n> height\n> weight\n> +birth_location_id\n>\n> [Location]\n> *id\n> city\n> state\n> country\n>\n> # Each relationship must be between exactly two entities, which\n> # need not be distinct. Each entity in the relationship has\n> # exactly one of four possible cardinalities:\n> #\n> # Cardinality    Syntax\n> # 0 or 1         0\n> # exactly 1      1\n> # 0 or more      *\n> # 1 or more      +\n> Person *--1 Location\n> \$ erd -i simple.er -o simple.pdf\n\nThe PDF should now contain a graph that looks like this:\n\n<<http://burntsushi.net/stuff/erd-example-simple.png>>\n\nSee the <https://github.com/BurntSushi/erd#readme README.md> file for more\nexamples and instructions on how to write ER files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "erd" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            ];
          buildable = true;
          };
        };
      };
    }