{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      category = true;
      splitbase = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "data-accessor";
        version = "0.2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>, Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/Record_access";
      url = "http://code.haskell.org/data-accessor/";
      synopsis = "Utilities for accessing and manipulating fields of records";
      description = "In Haskell 98 the name of a record field\nis automatically also the name of a function which gets the value\nof the according field.\nE.g. if we have\n\ndata Pair a b = Pair {first :: a, second :: b}\n\nthen\n\n> first  :: Pair a b -> a\n> second :: Pair a b -> b\n\nHowever for setting or modifying a field value\nwe need to use some syntactic sugar, which is often clumsy.\n\nmodifyFirst :: (a -> a) -> (Pair a b -> Pair a b)\nmodifyFirst f r\\@(Pair {first=a}) = r{first = f a}\n\nWith this package you can define record field accessors\nwhich allow setting, getting and modifying values easily.\nThe package clearly demonstrates the power of the functional approach:\nYou can combine accessors of a record and sub-records,\nto make the access look like the fields of the sub-record belong to the main record.\n\nExample:\n\n> *Data.Accessor.Example> (first^:second^=10) (('b',7),\"hallo\")\n> (('b',10),\"hallo\")\n\nYou can easily manipulate record fields in a 'Control.Monad.State.State' monad,\nyou can easily code 'Show' instances that use the Accessor syntax\nand you can parse binary streams into records.\nSee @Data.Accessor.Example@ for demonstration of all features.\n\nIt would be great if in revised Haskell versions the names of record fields\nare automatically 'Data.Accessor.Accessor's\nrather than plain @get@ functions.\nFor now, the package @data-accessor-template@ provides Template Haskell functions\nfor automated generation of 'Data.Acesssor.Accessor's.\n\nFor similar packages see @lenses@ and @fclabel@.\nA related concept are editors\n<http://conal.net/blog/posts/semantic-editor-combinators/>.\nEditors only consist of a modify method\n(and @modify@ applied to a 'const' function is a @set@ function).\nThis way, they can modify all function values of a function at once,\nwhereas an accessor can only change a single function value,\nsay, it can change @f 0 = 1@ to @f 0 = 2@.\nThis way, editors can even change the type of a record or a function.\nAn Arrow instance can be define for editors,\nbut for accessors only a Category instance is possible ('(.)' method).\nThe reason is the @arr@ method of the @Arrow@ class,\nthat conflicts with the two-way nature (set and get) of accessors.";
      buildType = "Simple";
    };
    components = {
      "data-accessor" = {
        depends  = [
          (hsPkgs.transformers)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.array)
            (hsPkgs.containers)
          ] ++ [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
          ] ++ pkgs.lib.optional (compiler.isJhc && true) (hsPkgs.containers));
      };
    };
  }