from setuptools import setup, Extension

module = Extension('printer._printer',
                   sources=['sdk/printer.cpp',
                            'cli/commands.cpp',
                            'binding_wrap.cxx'],
                   include_dirs=['sdk', 'cli'],
                   extra_compile_args=['-std=c++11'])

setup(name='printer',
      version='1.0',
      ext_modules=[module],
      py_modules=['printer'],
      entry_points={
          'console_scripts': [
              'my-cli=printer:main',
          ],
      })