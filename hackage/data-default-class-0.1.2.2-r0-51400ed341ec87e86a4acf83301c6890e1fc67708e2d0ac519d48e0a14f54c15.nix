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
      specVersion = "3.0";
      identifier = { name = "data-default-class"; version = "0.1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Lukas Mai";
      maintainer = "<lukasmai.403+hackage@gmail.com>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "A class for types with a default value";
      description = "This module defines a class for types with a default value.\nIt also defines 'Default' instances for the types 'Int', 'Int8',\n'Int16', 'Int32', 'Int64', 'Word', 'Word8', 'Word16', 'Word32', 'Word64',\n'Integer', 'Float', 'Double', 'Ratio', 'Complex', 'CShort', 'CUShort',\n'CInt', 'CUInt', 'CLong', 'CULong', 'CLLong', 'CULLong', 'CPtrdiff',\n'CSize', 'CSigAtomic', 'CIntPtr', 'CUIntPtr', 'CIntMax', 'CUIntMax',\n'CClock', 'CTime', 'CUSeconds', 'CSUSeconds', 'CFloat', 'CDouble', '(->)',\n'IO', 'Maybe', '()', '[]', 'Ordering', 'Any', 'All', 'Last', 'First', 'Sum',\n'Product', 'Endo', 'Dual', and tuples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.5")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
    };
  }