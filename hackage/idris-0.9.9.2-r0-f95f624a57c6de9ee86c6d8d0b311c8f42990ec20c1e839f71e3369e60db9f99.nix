{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { noeffects = false; llvm = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "idris"; version = "0.9.9.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edwin Brady <eb@cs.st-andrews.ac.uk>";
      author = "Edwin Brady";
      homepage = "http://www.idris-lang.org/";
      url = "";
      synopsis = "Functional Programming Language with Dependent Types";
      description = "Idris is a general purpose language with full dependent types.\nIt is compiled, with eager evaluation.\nDependent types allow types to be predicated on values,\nmeaning that some aspects of a program's behaviour can be\nspecified precisely in the type. The language is closely\nrelated to Epigram and Agda. There is a tutorial at <http://www.idris-lang.org/documentation>.\nFeatures include:\n\n* Full dependent types with dependent pattern matching\n\n* where clauses, with rule, simple case expressions,\npattern matching let and lambda bindings\n\n* Type classes, monad comprehensions\n\n* do notation, idiom brackets, syntactic conveniences for lists,\ntuples, dependent pairs\n\n* Totality checking\n\n* Coinductive types\n\n* Indentation significant syntax, extensible syntax\n\n* Tactic based theorem proving (influenced by Coq)\n\n* Cumulative universes\n\n* Simple foreign function interface (to C)\n\n* Hugs style interactive environment";
      buildType = "Custom";
      };
    components = {
      exes = {
        "idris" = {
          depends = ((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."language-java" or ((hsPkgs.pkgs-errors).buildDepError "language-java"))
            (hsPkgs."libffi" or ((hsPkgs.pkgs-errors).buildDepError "libffi"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary-instances"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
            ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))) ++ (pkgs.lib).optionals (flags.llvm) [
            (hsPkgs."llvm-general" or ((hsPkgs.pkgs-errors).buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-general-pure"))
            ];
          buildable = true;
          };
        };
      };
    }