defmodule PlanningPokerWeb.LiveHelpers do
  import Phoenix.LiveView.Helpers

  @doc """
  Renders a component inside the `PlanningPokerWeb.ModalComponent` component.

  The rendered modal receives a `:return_to` option to properly update
  the URL when the modal is closed.

  ## Examples

      <%= live_modal @socket, PlanningPokerWeb.TableLive.FormComponent,
        id: @table.id || :new,
        action: @live_action,
        table: @table,
        return_to: Routes.table_index_path(@socket, :index) %>
  """
  def live_modal(socket, component, opts) do
    path = Keyword.fetch!(opts, :return_to)
    modal_opts = [id: :modal, return_to: path, component: component, opts: opts]
    live_component(socket, PlanningPokerWeb.ModalComponent, modal_opts)
  end

  def live_locked_modal(socket, component, opts) do
    path = Keyword.fetch!(opts, :return_to)
    modal_opts = [id: :modal_locked, return_to: path, component: component, opts: opts]
    live_component(socket, PlanningPokerWeb.ModalComponent, modal_opts)
  end
end
