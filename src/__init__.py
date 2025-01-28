try:
    from ._printer import Printer, CLI, main
except ImportError:
    # This happens during development/IDE checking
    pass

__all__ = ['Printer', 'CLI', 'main']