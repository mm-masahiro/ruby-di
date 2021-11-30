# 依存性を持つコード
class NotePresenter
  def initialize
    @note_storage = NoteTextStorage.new
  end

  def pending_notes
    notes = @note_storage.get_all
    notes.select { |n| n.pending? }
  end
end

# 依存性を注入できるコード
class NotePresenter
  def initialize(storage)
    @note_storage = storage
  end

  def pending_notes
    notes = @note_storage.get_all
    notes.select { |n| n.pending? }
  end
end