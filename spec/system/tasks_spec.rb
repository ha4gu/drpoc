require "rails_helper"

describe "タスク管理", type: :system do
  before do
    task_a = FactoryBot.create(:task)
  end

  describe "タスク一覧表示機能" do
    context "タスク一覧表示画面にアクセスしたとき" do
      before do
        visit tasks_path
      end

      it "タスクのタイトルが表示される" do
        expect(page).to have_content "Finish something"
      end
    end
  end

  describe "タスク詳細表示機能" do
    context "タスク詳細表示画面にアクセスしたとき" do
      before do
        t = Task.find_by(title: "Finish something")
        visit task_path(t.id)
      end

      it "タスクの詳細が表示される" do
        expect(page).to have_content "Don't run away from your responsibilities."
      end
    end
  end

  describe "タスク削除機能" do
    context "タスク詳細表示画面にアクセスし、削除ボタンをクリックしOKを選択したとき" do
      before do
        t = Task.find_by(title: "Finish something")
        visit task_path(t.id)
        click_link("削除")
        page.driver.browser.switch_to.alert.accept
      end

      it "タスクが削除される" do
        expect(page).not_to have_content "Finish something"
      end
    end
  end
end
