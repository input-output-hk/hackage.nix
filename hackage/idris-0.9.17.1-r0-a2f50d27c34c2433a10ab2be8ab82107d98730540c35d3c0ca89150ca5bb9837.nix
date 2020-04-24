{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      ffi = false;
      gmp = false;
      curses = false;
      release = true;
      freestanding = false;
      ci = false;
      execonly = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "idris"; version = "0.9.17.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edwin Brady <eb@cs.st-andrews.ac.uk>";
      author = "Edwin Brady";
      homepage = "http://www.idris-lang.org/";
      url = "";
      synopsis = "Functional Programming Language with Dependent Types";
      description = "Idris is a general purpose language with full dependent types.\nIt is compiled, with eager evaluation.\nDependent types allow types to be predicated on values,\nmeaning that some aspects of a program's behaviour can be\nspecified precisely in the type. The language is closely\nrelated to Epigram and Agda. There is a tutorial at\n<http://www.idris-lang.org/documentation>.\nFeatures include:\n\n* Full dependent types with dependent pattern matching\n\n* where clauses, with rule, simple case expressions,\npattern matching let and lambda bindings\n\n* Type classes, monad comprehensions\n\n* do notation, idiom brackets, syntactic conveniences for lists,\ntuples, dependent pairs\n\n* Totality checking\n\n* Coinductive types\n\n* Indentation significant syntax, extensible syntax\n\n* Tactic based theorem proving (influenced by Coq)\n\n* Cumulative universes\n\n* Simple foreign function interface (to C)\n\n* Hugs style interactive environment";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."annotated-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "annotated-wl-pprint"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cheapskate" or ((hsPkgs.pkgs-errors).buildDepError "cheapskate"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary-instances"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (system.isFreebsd) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))) ++ (pkgs.lib).optional (flags.ffi) (hsPkgs."libffi" or ((hsPkgs.pkgs-errors).buildDepError "libffi"))) ++ (pkgs.lib).optional (flags.gmp) (hsPkgs."libffi" or ((hsPkgs.pkgs-errors).buildDepError "libffi"))) ++ (pkgs.lib).optional (flags.curses) (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"));
        buildable = true;
        };
      exes = {
        "idris" = {
          depends = [
            (hsPkgs."idris" or ((hsPkgs.pkgs-errors).buildDepError "idris"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "idris-c" = {
          depends = [
            (hsPkgs."idris" or ((hsPkgs.pkgs-errors).buildDepError "idris"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "idris-javascript" = {
          depends = [
            (hsPkgs."idris" or ((hsPkgs.pkgs-errors).buildDepError "idris"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "idris-node" = {
          depends = [
            (hsPkgs."idris" or ((hsPkgs.pkgs-errors).buildDepError "idris"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }