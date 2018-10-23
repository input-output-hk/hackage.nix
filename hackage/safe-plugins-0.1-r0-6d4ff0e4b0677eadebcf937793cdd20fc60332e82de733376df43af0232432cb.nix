{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "safe-plugins";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "";
      url = "";
      synopsis = "A small wrapper over hs-plugins to allow loading safe plugins";
      description = "This library allows you to load plugins, just as hs-plugins do.\nBut under some circumstances, you do not want to allow\nplugins to do everything they want. What about plugin\nwhich executes `rm -rf /*' ? In Haskell, you can limit\nplugin's abilities just by not allowing it to import `not\nsafe' modules (System.IO.Unsafe, etc). With this library,\nyou specify a list of modules that plugin should be forced\nto import (i.e., some plugin API module), and a list of\nmodule that you want to allow plugin to import (some\n`surely safe' modules). Plugin cannot import any other\nmodules. Moreover, you can specify some language\nextensions, for example, NoImplicitPrelude.";
      buildType = "Simple";
    };
    components = {
      "safe-plugins" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.Unixutils)
          (hsPkgs.plugins)
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }