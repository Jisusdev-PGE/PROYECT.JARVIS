# PROYECT.JARVIS

Asistente de escritorio para Windows 11 x64 en dos procesos.

1. wake_engine (C++): bandeja, Ctrl+Alt+J, una sola instancia. No carga Python, UI, Mistral ni SQLite. No abre el micrófono. keyword_slot.h no detecta «JARVIS ON»; no hay modelo incluido.
2. Asistente Python 3.11: comandos, SQLite, búsqueda DuckDuckGo/Wikipedia, cliente Mistral por HTTPS si existe MISTRAL_API_KEY, ventana PySide6.

No hay mediciones de RAM ni CPU. No se compiló JarvisWake.exe ni JARVIS.exe en este entorno.

Ver .env.example. Claves solo por entorno. build_wake_engine.bat y build_windows.bat son para Windows.

Pruebas (sin red real ni micrófono): py -m unittest discover -s tests -v
