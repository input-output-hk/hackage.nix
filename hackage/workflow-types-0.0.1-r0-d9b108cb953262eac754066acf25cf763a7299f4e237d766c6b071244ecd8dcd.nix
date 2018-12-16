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
      specVersion = "1.10";
      identifier = {
        name = "workflow-types";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-types#readme";
      url = "";
      synopsis = "Automate keyboard\\/mouse\\/clipboard\\/application interaction.";
      description = "\na platform-independent interface for scripting your manual computer workflows.\n\ndocumention at \"Workflow.Core\".\n\nsee the source of \"Workflow.Example\" for an example.\n\ntransitive dependencies:\n\n<<workflow-types.png>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.spiros)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.free)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "example-workflow-types" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.workflow-types)
          ];
        };
      };
    };
  }