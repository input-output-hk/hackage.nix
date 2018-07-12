{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-swf";
          version = "0.0.8";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Simple Workflow Service SDK.";
        description = "Amazon Simple Workflow Service (Amazon SWF) makes it easy to build\napplications that coordinate work across distributed components. In Amazon\nSWF, a task represents a logical unit of work that is performed by a\ncomponent of your application. Coordinating tasks across the application\ninvolves managing intertask dependencies, scheduling, and concurrency in\naccordance with the logical flow of the application. Amazon SWF gives you\nfull control over implementing tasks and coordinating them without worrying\nabout underlying complexities such as tracking their progress and maintaining\ntheir state.\n\n/See:/ <http://docs.aws.amazon.com/amazonswf/latest/apireference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        "amazonka-swf" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }