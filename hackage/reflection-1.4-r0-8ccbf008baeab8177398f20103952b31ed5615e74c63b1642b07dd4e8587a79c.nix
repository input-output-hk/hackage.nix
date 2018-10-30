{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { slow = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reflection";
        version = "1.4";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2013 Edward A. Kmett,\n2012 Elliott Hird,\n2004 Oleg Kiselyov and Chung-chieh Shan";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Elliott Hird, Oleg Kiselyov and Chung-chieh Shan";
      homepage = "http://github.com/ekmett/reflection";
      url = "";
      synopsis = "Reifies arbitrary terms into types that can be reflected back into terms";
      description = "This package provides an implementation of the ideas presented in the paper\n\\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov and\nChung-chieh Shan. However, the API has been streamlined to improve performance.\n\nThe original paper can be obtained from\n<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>.\n\nFor a summary of the approach taken by this library, along with more motivating\nexamples, see Austin Seipp's tutorial at\n<https://www.fpcomplete.com/user/thoughtpolice/using-reflection>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }