#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int value;
    struct Node* next;
} Node;

Node* createNode(int value)
{
    Node* n = malloc(sizeof(Node));
    n->value = value;
    n->next = NULL;
    return n;
}

Node* pushFront(Node* head, int value)
{
    Node* new_node = createNode(value);
    new_node->next = head;
    return new_node;
}

Node* pushBack(Node* head, int value)
{
    Node* new_node = createNode(value);
    if (head == NULL)
        return new_node;
    Node* current = head;
    while (current->next) {
        current = current->next;
    }
    current->next = new_node;
    return head;
}
void printList(Node* head)
{
    if (head == NULL) {
        printf("Список пуст");
    }
    Node* current = head;
    while (current) {
        printf("%d ", current->value);
        current = current->next;
    }
    printf("\n");
}
void freeList(Node* head)
{
    while (head != NULL) {
        Node* next = head->next;
        free(head);
        head = next;
    }
}

Node* reverse(Node* head)
{
    Node* list = NULL;
    while (head != NULL) {
        list = pushFront(list, head->value);
        head = head->next;
    }
    return list;
}

int main(void)
{

    Node* List = NULL;
    Node* List_2 = NULL;
    // 1
    List = pushBack(List, 10);
    List = pushBack(List, 20);
    List = pushBack(List, 5);
    List = pushBack(List, 30);
    printList(List);
    List_2 = reverse(List);
    printList(List_2);
    freeList(List);
    freeList(List_2);
    // 2
    List = pushBack(List, 1);
    List = pushFront(List, 2);
    List = pushBack(List, 3);
    List = pushFront(List, 4);
    printList(List);
    List_2 = reverse(List);
    printList(List_2);
    freeList(List);
    freeList(List_2);
    // 3
    List = NULL;
    printList(List);
    printList(reverse(List));
    freeList(List);
    freeList(List_2);
    return 0;
}
