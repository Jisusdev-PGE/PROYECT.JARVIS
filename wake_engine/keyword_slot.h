#pragma once

// Hueco para un detector local de "JARVIS ON".
// No hay modelo en el repositorio. No se infiere la frase por volumen.
// La activación real del proceso es el atajo Ctrl+Alt+J.

struct KeywordHit {
    bool detected;
    const char* phrase;
};

inline KeywordHit poll_keyword_slot() {
    return KeywordHit{false, ""};
}
