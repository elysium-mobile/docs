function Div(element)
  -- Si el bloque es para PDF pero estamos exportando a Word, lo borramos
  if element.classes:includes('pdf-only') and FORMAT ~= 'latex' then
    return {}
  end
  -- Si el bloque es para Word pero estamos exportando a PDF, lo borramos
  if element.classes:includes('word-only') and FORMAT ~= 'docx' then
    return {}
  end
  return element
end