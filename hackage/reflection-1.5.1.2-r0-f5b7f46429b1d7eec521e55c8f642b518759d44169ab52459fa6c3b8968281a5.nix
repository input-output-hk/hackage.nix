{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      slow = false;
      th = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reflection";
        version = "1.5.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2013 Edward A. Kmett,\n2012 Elliott Hird,\n2004 Oleg Kiselyov and Chung-chieh Shan";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Elliott Hird, Oleg Kiselyov and Chung-chieh Shan";
      homepage = "http://github.com/ekmett/reflection";
      url = "";
      synopsis = "Reifies arbitrary terms into types that can be reflected back into terms";
      description = "This package addresses the /configuration problem/ which is\npropogating configurations that are available at run-time, allowing\nmultible configurations to coexist without resorting to mutable\nglobal variables or 'System.IO.Unsafe.unsafePerformIO'.\n\nAn example is modular arithmetic where the modulus itself can be\nsupplied at run-time:\n\n@\nfoo :: Modular s => Modulus s\nfoo = 1000 * 1000 * 5 + 2000\n@\n>>> withModulus 1280 foo\n1040\n\ngiven the following setup:\n\n@\n&#123;-# LANGUAGE ScopedTypeVariables, RankNTypes, ConstraintKinds, FlexibleContexts, UndecidableInstances #-&#125;\n\nimport Data.Proxy      (Proxy(Proxy))\nimport Data.Reflection (Reifies, reflect, reify)\n@\n\nand definitions:\n\n@\ndata Modulus s = M &#123; getModulus :: Integer &#125;\ntype Modular s = 'Data.Reflection.Reifies' s Integer\n\nnormalize :: forall s. Modular s => Integer -> Modulus s\nnormalize n = M (mod n modulus) where\n&#x20;  modulus = 'Data.Reflection.reflect' ('Data.Proxy.Proxy' :: 'Data.Proxy.Proxy' s)\n\ninstance Modular s => Num (Modulus s) where\n&#x20;  M a + M b = normalize (a + b)\n&#x20;  M a * M b = normalize (a * b)\n\nwithModulus :: Integer -> (forall s. Modular s => Modulus s) -> Integer\nwithModulus m v = 'Data.Reflection.reify' m (getModulus . asProxyOf v)\n&#x20;  where\n&#x20;  asProxyOf :: f s -> Proxy s -> f s\n&#x20;  asProxyOf = const\n@\n\nThat package is an implementation of the ideas presented in the\npaper \\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov\nand Chung-chieh Shan (<http://okmij.org/ftp/Haskell/tr-15-04.pdf original paper>). However, the API has been streamlined to improve\nperformance.\n\nAustin Seipp's tutorial <https://www.fpcomplete.com/user/thoughtpolice/using-reflection Reflecting values to types and back> provides a summary of the\napproach taken by this library, along with more motivating\nexamples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.tagged)) ++ pkgs.lib.optional (flags.th && (compiler.isGhc && true)) (hsPkgs.template-haskell);
      };
    };
  }