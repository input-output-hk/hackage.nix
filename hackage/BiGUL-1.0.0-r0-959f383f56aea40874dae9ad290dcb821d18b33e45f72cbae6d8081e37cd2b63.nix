{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "BiGUL";
        version = "1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Josh Ko <hsiang-shang@nii.ac.jp> and Zirun Zhu <zhu@nii.ac.jp>";
      author = "Josh Ko, Tao Zan, Li Liu, Zirun Zhu, Jorge Mendes, and Zhenjiang Hu";
      homepage = "http://www.prg.nii.ac.jp/project/bigul/";
      url = "";
      synopsis = "The Bidirectional Generic Update Language";
      description = "Putback-based bidirectional programming allows the programmer to\nwrite only one putback transformation, from which the unique\ncorresponding forward transformation is derived for free. BiGUL,\nshort for the Bidirectional Generic Update Language, is designed to\nbe a minimalist putback-based bidirectional programming language.\nBiGUL was originally developed in the dependently typed programming\nlanguage Agda, and its well-behavedness has been completely formally\nverified; this package is the Haskell port of BiGUL.\n\nFor more detail, see the following paper:\n\n* Hsiang-Shang Ko, Tao Zan, and Zhenjiang Hu. BiGUL: A formally\nverified core language for putback-based bidirectional programming.\nIn /Partial Evaluation and Program Manipulation/, PEPM’16,\npages 61–72. ACM, 2016. <http://dx.doi.org/10.1145/2847538.2847544>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.th-extras)
        ];
      };
    };
  }