{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bulletinstalled = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lambdacube-samples";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba.hruska@gmail.com, patai.gergely@gmail.com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://lambdacube3d.wordpress.com/";
      url = "";
      synopsis = "Samples for LambdaCube 3D";
      description = "Executable samples to showcase the capabilities of LambdaCube\n3D. Each sample is a separate executable called\n@lambdacube-\\<samplename\\>@. The following samples are included\n(each is described in a separate blog post):\n\n* 'hello': the cannonical rotating cube\n\n* 'convolutionfilter': a simple Gaussian blur (<http://lambdacube3d.wordpress.com/2013/04/11/optimising-convolution-filters/>)\n\n* 'shadowmapping': variance shadow mapping (<http://lambdacube3d.wordpress.com/2012/10/14/variance-shadow-mapping/>)\n\n* 'cubemap': cube mapped reflection using geometry shaders (<http://lambdacube3d.wordpress.com/2012/10/14/variance-shadow-mapping/>)\n\n* 'bulletexample': integration with Bullet physics through Elerea;\nthis sample is optional due to its dependence on Bullet, and you\nneed to install the package with -fBulletInstalled to enable it.\n(first post: <http://lambdacube3d.wordpress.com/2012/12/20/using-bullet-physics-with-an-frp-approach-part-1/>,\nsecond post: <http://lambdacube3d.wordpress.com/2012/12/20/using-bullet-physics-with-an-frp-approach-part-2/>,\nthird post: <http://lambdacube3d.wordpress.com/2012/12/20/using-bullet-physics-with-an-frp-approach-part-3/>)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambdacube-hello" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.vect)
            (hsPkgs.vector)
            (hsPkgs.elerea)
            (hsPkgs.lambdacube-core)
            (hsPkgs.time)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLFW-b)
            (hsPkgs.stb-image)
          ];
        };
        "lambdacube-shadowmapping" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.vect)
            (hsPkgs.vector)
            (hsPkgs.elerea)
            (hsPkgs.lambdacube-core)
            (hsPkgs.time)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lambdacube-cubemap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.vect)
            (hsPkgs.vector)
            (hsPkgs.elerea)
            (hsPkgs.lambdacube-core)
            (hsPkgs.time)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lambdacube-convolutionfilter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.vect)
            (hsPkgs.vector)
            (hsPkgs.elerea)
            (hsPkgs.lambdacube-core)
            (hsPkgs.time)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLFW-b)
          ];
        };
        "lambdacube-bulletexample" = {
          depends  = pkgs.lib.optionals (flags.bulletinstalled) [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.vect)
            (hsPkgs.vector)
            (hsPkgs.elerea)
            (hsPkgs.bullet)
            (hsPkgs.lambdacube-core)
            (hsPkgs.time)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLFW-b)
          ];
        };
      };
    };
  }