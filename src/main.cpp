#include "config.h"
#include "clang/Frontend/FrontendActions.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include "clang/Tooling/Tooling.h"
#include "llvm/Support/CommandLine.h"
#include <stdint.h>

using namespace clang::tooling;

// test run: ./c2bl ../test/testfile.h -- s

int
main(int argc, const char **argv)
{
	llvm::cl::OptionCategory MyToolCategory("c2bl options");
	CommonOptionsParser      OptionsParser(argc, argv, MyToolCategory);

	ClangTool Tool(OptionsParser.getCompilations(), OptionsParser.getSourcePathList());
	return Tool.run(newFrontendActionFactory<clang::ASTPrintAction>().get());
}
