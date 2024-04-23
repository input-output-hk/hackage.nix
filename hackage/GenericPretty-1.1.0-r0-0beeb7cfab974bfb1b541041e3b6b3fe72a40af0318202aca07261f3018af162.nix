{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GenericPretty"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ranca.razvan@gmail.com";
      author = "Razvan Ranca";
      homepage = "https://github.com/HaggisMcMutton/GenericPretty";
      url = "";
      synopsis = "A generic, derivable, haskell pretty printer.";
      description = "*GenericPretty is a haskell library that provides support for automatic\nderivation of pretty printing functions on user defined data types.\n\n*The Pretty library <http://www.haskell.org/ghc/docs/7.0.4/html/libraries/ghc-7.0.4/Pretty.html>\nis used underneath, the work is done over 'Pretty.Doc' types.\nThe library \"MyPretty\" is also provided. This library is a thin wrapper around the \"Pretty\"\nlibrary and implements only 'Style' related features. These features are planned to be added\nto the Pretty library itself.\nWhen that happens \"MyPretty\" will become obsolete and will be replaced by \"Pretty\".\n\n*The output provided by the library functions is identical to that of Prelude.show,\nexcept it has extra whitespace.\n\n*This package requires the use of the new GHC.Generics features: <http://www.haskell.org/haskellwiki/Generics>.\nThese features are present in versions of GHC >= 7.2.\n\n*The Generics used are based on those described in the paper \"A Generic Deriving Mechanism for Haskell\" -\nby Magalhaes, Dijkstra, Jeuring and Loh in Proceedings of the third ACM Haskell symposium on Haskell\n(Haskell'2010), pp. 37-48, ACM, 2010: <http://dreixel.net/research/pdf/gdmh.pdf>\nThere are several changes from the original paper in the ghc implementation\twhich are described here:\n<http://www.haskell.org/haskellwiki/Generics#Changes_from_the_paper>.\n\n*This generics mechanism supports deriving for all haskell datatypes EXCEPT for\nconstrained datatypes.\nThat is to say, datatypes which have a context will fail.\n\nFor instance,\n\n\"data (Eq a) => Constr a = Constr a\"\n\nwill fail because of the (Eq a) context.\n\n*Instalation instructions\n\nThe package is installed in the same way as any other package. If needed, instructions are provided below.\n\n0. Make sure you have a version of ghc >= 7.2 installed and that you can use the 'runhaskell' command from the command line.\n\n1. Download the file \"GenericPretty-1.1.0.tar.gz\" from this page.\n\n2. Unpack the file. If using a UNIX system, run\n\ntar xzf GenericPretty-1.1.0.tar.gz\n\nIf on windows use your preffered unpacking utility(for instance, 7zip : <http://www.7-zip.org/>)\n\n3. Move to the correct directory:\n\ncd GenericPretty-1.0.1\n\n4. Run the following haskell commands to install the library globally\n\nrunhaskell Setup configure\n\nrunhaskell Setup build\n\nrunhaskell Setup install\n\nIf something went wrong, you can check this page for more info, look at manual installation:\n<http://www.haskell.org/haskellwiki/Cabal/How_to_install_a_Cabal_package>\n\n*Basic example of usage\n\nHere is a source file demonstrating the GenericPretty usage\n\nimport Text.PrettyPrint.GenericPretty\n\ndata Tree a = Leaf a | Node (Tree a) (Tree a) deriving (Generic)\n\ninstance (Out a) => Out (Tree a) where\ndocPrec = genOut\n\ntree :: Tree Int\n\ntree = Node (Node (Leaf 333333333) (Leaf (-555555555))) (Leaf 777777777)\n\nmain = pp tree\n\n* For the above program to run the -XDeriveGeneric flag needs to be set.\n\nThis can be done either directly at the command line, by compiling with \"ghc -XDeriveGeneric\" or in\nthe source code by using the LANGUAGE pragma (it seems I can't demonstrate the LANGUAGE pragma since\ncabal hates special characters. An example however is provided in the README file included in the package).\nAlternatively, for more information on the LANGUAGE pragma see here:\n<http://www.haskell.org/ghc/docs/7.0.4/html/users_guide/pragmas.html>\n\nBesides setting the flag, one must derive \"Generic\" for the desired datatype\nby typing \"deriving (Generic)\" and write an instance of \"Out\" defining docPrec as \"docPrec = genOut\".\nThen the pretty printing functions such as \"pp\" can be used on any data of that type.\n\nFor more details about the above example as well as an example of custom pretty printing please\ncheck the README file included in the package. For more information about the library itself and\nwhat it exports check the API linked further down this page.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }