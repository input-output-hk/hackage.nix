{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      hsx = false;
      blaze = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "BluePrintCSS";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Mironov <ierton@gmail.com>";
      author = "Sergey Mironov";
      homepage = "http://git.ierton.ru/?p=BluePrint.git;a=summary";
      url = "";
      synopsis = "Html document layout library.";
      description = "The library helps to format html documents using popular BluePrint CSS framework <http://www.blueprintcss.org/>. Currently, Blaze and HSX html generators are supported (note 'blaze' and 'hsx' flags). See repository for complex examples.";
      buildType = "Simple";
    };
    components = {
      "BluePrintCSS" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (flags.blaze) (hsPkgs.blaze-html)) ++ pkgs.lib.optional (flags.hsx) (hsPkgs.hsx);
      };
    };
  }